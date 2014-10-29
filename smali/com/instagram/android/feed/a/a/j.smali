.class final Lcom/instagram/android/feed/a/a/j;
.super Landroid/os/Handler;
.source "FeedPeopleTagModule.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/i;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/j;->a:Lcom/instagram/android/feed/a/a/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 39
    sget v0, Lcom/instagram/android/feed/a/h;->a:I

    iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->a:Lcom/instagram/android/feed/a/a/i;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/i;->a(Lcom/instagram/android/feed/a/a/i;)Lcom/instagram/android/feed/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->o()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->a:Lcom/instagram/android/feed/a/a/i;

    invoke-static {v1}, Lcom/instagram/android/feed/a/a/i;->a(Lcom/instagram/android/feed/a/a/i;)Lcom/instagram/android/feed/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/android/feed/a/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    sget v1, Lcom/facebook/av;->row_feed_photo_tags_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    sget v2, Lcom/facebook/av;->row_feed_photo_people_tagging:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    .line 48
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->a:Lcom/instagram/android/feed/a/a/i;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/i;->b(Lcom/instagram/android/feed/a/a/i;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->a:Lcom/instagram/android/feed/a/a/i;

    invoke-static {v0, v1}, Lcom/instagram/android/feed/a/a/i;->a(Lcom/instagram/android/feed/a/a/i;Landroid/view/View;)V

    .line 55
    :cond_0
    return-void
.end method
