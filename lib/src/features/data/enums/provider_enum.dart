enum ProviderEnum {
  emial('emial');

  final String provider;
  const ProviderEnum(this.provider);
}

extension ProviderParsing on String {
    ProviderEnum get toProviderEnum{
    switch(this){
      case 'emial':
        return ProviderEnum.emial;
      default:
        return ProviderEnum.emial;
    }
  }
}
