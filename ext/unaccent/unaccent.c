#include <ruby/ruby.h>
#include <ruby/encoding.h>
#include <unac.h>

static VALUE
unaccent_string(VALUE self, VALUE str) {
  const char* input = StringValuePtr(str);
  long input_len = RSTRING_LEN(str);

  static char* output;
  static unsigned long output_len;

  unac_string("UTF-8", input, input_len, &output, &output_len);
  VALUE result = rb_str_new(output, output_len);

  int enc = rb_enc_find_index("UTF-8");
  rb_enc_associate_index(result, enc);

  return result;
}

void
Init_unaccent(void) {
  VALUE cUnaccent;

  cUnaccent = rb_const_get(rb_cObject, rb_intern("Unaccent"));
  rb_define_singleton_method(cUnaccent, "unaccent", unaccent_string, 1);
}
