class GroupedData<HeaderType, DataType> {
  GroupedData({
    required this.header,
    required this.data,
  });

  final HeaderType header;
  final List<DataType> data;
}
