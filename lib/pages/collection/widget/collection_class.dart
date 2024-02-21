class CollectionClass{
  final String name;
  final String date;
  final String time;
  final String category;
  final   color;
  CollectionClass(
      this.category,
      this.color,

      {
        required this.date,
        required this.time,
        required this.name,
      }
      );
}