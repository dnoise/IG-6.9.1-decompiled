.class final Lcom/instagram/android/feed/a/o;
.super Lcom/instagram/android/i/c;
.source "UserDetailFeedAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/n;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/n;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;

    invoke-direct {p0}, Lcom/instagram/android/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Lcom/instagram/android/feed/a/n;Z)Z

    .line 74
    iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V

    .line 75
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/a/n;->a(Lcom/instagram/android/feed/a/n;Z)Z

    .line 68
    iget-object v0, p0, Lcom/instagram/android/feed/a/o;->a:Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V

    .line 69
    return-void
.end method
