abstract class ArticlesEvent {
  const ArticlesEvent();
}

class OnFetchingArticlesEvent extends ArticlesEvent {
  final int period;
  final bool loading;

  OnFetchingArticlesEvent(this.period, this.loading);
}
