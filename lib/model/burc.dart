class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  get burcAdi => this._burcAdi;

  get burcTarihi => this._burcTarihi;

  get burcDetayi => this._burcDetayi;

  get burcKucukResim => this._burcKucukResim;

  get burcBuyukResim => this._burcBuyukResim;

  Burc(
      {required String burcAdi,
      required String burcTarihi,
      required String burcDetayi,
      required String burcKucukResim,
      required String burcBuyukResim})
      : _burcAdi = burcAdi,
        _burcTarihi = burcTarihi,
        _burcDetayi = burcDetayi,
        _burcKucukResim = burcKucukResim,
        _burcBuyukResim = burcBuyukResim;

  @override
  String toString() {
    return "$_burcAdi - $_burcBuyukResim";
  }
}
