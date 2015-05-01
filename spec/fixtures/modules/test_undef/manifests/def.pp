define test_undef::def($ensure = undef) {
  file { '/tmp/foo' :
    ensure  => $ensure,
  }
}
