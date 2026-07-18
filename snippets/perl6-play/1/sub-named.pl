sub power(:$base, :$exponent) {
    return $base ** $exponent;
}
say power(:base(2), :exponent(3));
say power(:exponent(3), :base(2));

sub power1(:val($base), :pow($exponent)) {
    return $base ** $exponent;
}
say power1(:val(5), :pow(2));
say power1(:pow(2), :val(5));
