.class final Lcom/instagram/android/feed/a/a/c;
.super Ljava/lang/Object;
.source "FeedItemViewableHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/b;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/c;->a:Lcom/instagram/android/feed/a/a/b;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/b;->b(Lcom/instagram/android/feed/a/a/b;)Lcom/instagram/feed/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/feed/h/a;->a()V

    .line 63
    :cond_0
    return-void
.end method
