import '../widgets/list_tile.dart';
import '../widgets/total_price.dart';

List<ListTile01> list_items = [
  const ListTile01(
    images: 'assets/pencil.jpg',
    subtitle: 'in stock',
    title: 'Pencil',
    trailing: '1.50',
  ),
  const ListTile01(
    images: 'assets/ruber.png',
    subtitle: 'in stock',
    title: 'Rubberbands',
    trailing: '4.50',
  ),
  const ListTile01(
    images: 'assets/ruler.jpg',
    subtitle: 'only 1 day left in stock',
    title: 'Rulers',
    trailing: '8.00',
  ),
  const ListTile01(
    images: 'assets/clock.jpg',
    subtitle: 'in stock',
    title: 'Clock',
    trailing: '22.00',
  ),
];
List<TotalPrice> list_price = [
  const TotalPrice(
    price: '36.00',
    total: 'Subtotal',
  ),
  const TotalPrice(
    price: '2.00',
    total: 'Shipping',
  ),
  const TotalPrice(
    price: '3.24',
    total: 'Tax',
  ),
];
