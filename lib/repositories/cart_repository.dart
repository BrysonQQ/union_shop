class CartRepository {
  int _itemCount = 0;
  
  int get itemCount => _itemCount;
  
  void addItem() {
    _itemCount++;
  }
  
  void clear() {
    _itemCount = 0;
  }
}