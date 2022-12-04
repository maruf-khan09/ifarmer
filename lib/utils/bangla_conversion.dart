class BanglaConversion {
  String a = "";

  String convertToBengali(String s) {
    var sb = new StringBuffer();
    for (int i = 0; i < s.length; i++) {
      switch (s[i]) {
        //bangla digits
        case '0':
          sb.write("০");
          break;
        case '1':
          sb.write("১");
          break;
        case '2':
          sb.write("২");
          break;
        case '3':
          sb.write("৩");
          break;
        case '4':
          sb.write("৪");
          break;
        case '5':
          sb.write("৫");
          break;
        case '6':
          sb.write("৬");
          break;
        case '7':
          sb.write("৭");
          break;
        case '8':
          sb.write("৮");
          break;
        case '9':
          sb.write("৯");
          break;
        case '10':
          sb.write(".");
          break;
        default:
          sb.write(s[i]);
          break;
      }
    }
    return sb.toString();
  }
}
