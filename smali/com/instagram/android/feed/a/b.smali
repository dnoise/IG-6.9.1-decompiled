.class final Lcom/instagram/android/feed/a/b;
.super Landroid/os/Handler;
.source "FeedAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_1

    .line 133
    iget-object v0, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a;->a(Lcom/instagram/android/feed/a/a;)Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->g()Lcom/instagram/android/feed/ui/StickyHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->g()Lcom/instagram/android/feed/ui/StickyHeaderListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/feed/ui/StickyHeaderListView;->a(Z)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/a/b;->a:Lcom/instagram/android/feed/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a;->b(Lcom/instagram/android/feed/a/a;)Lcom/instagram/android/feed/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/b;->b()V

    goto :goto_0
.end method
