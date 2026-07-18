role FoodService {
    has @!orders;

    method order($price) {
        @!orders.push($price);
    }

    method calc {
        return [+] @!orders;
    }

    method bill {
        return self.calc;
    }
}

my $x = FoodService.new;
$x.order(100);
$x.order(20);
say $x.bill;

class Cafe does FoodService {
    method bill {
        return self.calc * 1.1;
    }
}

class Restaurant does FoodService {
    method bill {
        sleep 10.rand;
        return self.calc * 1.3;
    }
}

my $cafe = Cafe.new;
$cafe.order(10);
$cafe.order(20);
say $cafe.bill;


my $restaurant = Restaurant.new;
$restaurant.order(100);
$restaurant.order(200);
say $restaurant.bill;

