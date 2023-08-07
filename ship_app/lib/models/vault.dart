class Vault {
  final String name;
  final double total;
  final double quantity;

  Vault({
    required this.name,
    required this.total,
    required this.quantity,
  });
}

List<Vault> getVaults() {
  return <Vault>[
    Vault(name: 'BODEGA 1', total: 6750, quantity: 3462),
    Vault(name: 'BODEGA 2', total: 93500, quantity: 68300),
    Vault(name: 'BODEGA 3', total: 13678, quantity: 8925),
    Vault(name: 'BODEGA 4', total: 72500, quantity: 68300),
    Vault(name: 'BODEGA 5', total: 13678, quantity: 8925),
    Vault(name: 'BODEGA 1', total: 6750, quantity: 3462)
  ];
}
