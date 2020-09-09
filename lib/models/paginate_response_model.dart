class PaginateResponse {
  final int count;
  final int pages;
  final String next;
  final String prev;

  PaginateResponse(this.count, this.pages, this.next, this.prev);
}
