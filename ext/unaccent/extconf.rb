require 'mkmf'

abort 'Libunac headers missing' unless find_header('unac.h')
abort 'Libunac library missing' unless find_library('unac', 'unac_string')

create_makefile 'unaccent/unaccent'
