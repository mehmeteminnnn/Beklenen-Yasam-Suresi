import 'package:yasam_beklentisi/user_data.dart';

class Hesaplama {
  UserData kullanici;
  Hesaplama(this.kullanici);
  double hesaplaaa() {
    double? sonuc =
        83 + (kullanici.yapilanSpor ?? 0.0) - (kullanici.sigaraSayisi ?? 0.0);
    sonuc = sonuc + (kullanici.boy ?? 0.0) / (kullanici.kilo ?? 0.0);
    kullanici.seciliCinsiyet == 'KADIN' ? sonuc = sonuc + 5 : sonuc = sonuc - 2;

    return sonuc;
  }
}
