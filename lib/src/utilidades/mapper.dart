typedef MapFunc<T> = T Function(Map<String, dynamic> item);

class Mapper {
  static List<T> map<T>(List list, { MapFunc<T> using }) {
    if (list == null) {
      return [];
    }
    return list
      .map<T>((item) => using(item))
      .toList();
  }
}
