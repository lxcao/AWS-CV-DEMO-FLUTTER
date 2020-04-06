class Vehicle {
  String imageUrl;
  String brand;
  String mode;
  String description;

  Vehicle({
    this.brand,
    this.description,
    this.imageUrl,
    this.mode,
  });
}

final List<Vehicle> vehicles = [
  Vehicle(
      imageUrl: 'assets/images/Benz-GLS.png',
      brand: '奔驰',
      mode: 'GLS450',
      description: '跨越高山远洋 方识乾坤之大'),
  Vehicle(
      imageUrl: 'assets/images/BMW-X5.png',
      brand: '宝马',
      mode: 'X5',
      description: '越峥嵘 越从容'),
  Vehicle(
      imageUrl: 'assets/images/Porsche-Cayenne.png',
      brand: '保时捷',
      mode: 'Cayenne2019',
      description: '无畏无极'),
  Vehicle(
      imageUrl: 'assets/images/Audi-Q7.png',
      brand: '奥迪',
      mode: 'Q7',
      description: '势为强者'),
  Vehicle(
      imageUrl: 'assets/images/landrover-rangerover.png',
      brand: '路虎',
      mode: 'RangeRover2020',
      description: '挑战极限 征服世界'),
  Vehicle(
      imageUrl: 'assets/images/Volvo-XC90.png',
      brand: '沃尔沃',
      mode: 'XC90',
      description: '一路守护 成就未来'),
];
