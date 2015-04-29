define test_undef::def($user = undef) {
  exec { '/bin/echo foo' :
    user  => $user,
  }
}
