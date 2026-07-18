print 'ok'     if     'abcde'  ~~ /abc?de/; # ok
print 'ok'     if     'abde'   ~~ /abc?de/; # ok
print 'not ok' unless 'abccde' ~~ /abc?de/; # not ok
