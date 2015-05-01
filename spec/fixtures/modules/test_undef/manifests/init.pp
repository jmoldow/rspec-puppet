class test_undef($ensure = undef) {
  file { '/tmp/foo':
    ensure  => 'present',
  }
}
