#!/usr/bin/perl -w
use CGI;
use Sys::CPU;
$number_of_cpus = Sys::CPU::cpu_count();
$q = CGI->new;
print $q->header,
  $q->start_html('hello world'),
  $q->h1('hello world'),
  $q->pre('CPU Count: '.Sys::CPU::cpu_count()."\nSpeed: ".Sys::CPU::cpu_clock()."\nType: ".Sys::CPU::cpu_type()."\n"),
  $q->end_html;
