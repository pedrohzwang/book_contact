enum HiveBoxes {
  contactBox;
}

extension ExtensionHiveBoxes on HiveBoxes {
  String toValue() {

    Map values = {
      HiveBoxes.contactBox: 'contact',
    };

    return values[this];
  }
}