.class final Lcom/instagram/android/fragment/dd;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/feed/a/c;

.field final synthetic b:Lcom/instagram/android/fragment/cr;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cr;Lcom/instagram/feed/a/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/instagram/android/fragment/dd;->b:Lcom/instagram/android/fragment/cr;

    iput-object p2, p0, Lcom/instagram/android/fragment/dd;->a:Lcom/instagram/feed/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/instagram/android/fragment/dd;->b:Lcom/instagram/android/fragment/cr;

    iget-object v0, v0, Lcom/instagram/android/fragment/cr;->ab:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/dd;->b:Lcom/instagram/android/fragment/cr;

    iget-object v0, v0, Lcom/instagram/android/fragment/cr;->ab:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    const-string v0, "loadFeedFromDiskCache"

    invoke-static {v0}, Lcom/facebook/e/c/k;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/instagram/android/fragment/dd;->b:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cr;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/l;

    iget-object v1, p0, Lcom/instagram/android/fragment/dd;->a:Lcom/instagram/feed/a/c;

    invoke-virtual {v1}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/l;->c(Ljava/util/List;)V

    .line 273
    iget-object v1, p0, Lcom/instagram/android/fragment/dd;->b:Lcom/instagram/android/fragment/cr;

    iget-object v0, p0, Lcom/instagram/android/fragment/dd;->a:Lcom/instagram/feed/a/c;

    invoke-virtual {v0}, Lcom/instagram/feed/a/c;->t()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-virtual {v0}, Lcom/instagram/feed/d/l;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/fragment/cr;->a(Lcom/instagram/android/fragment/cr;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    :cond_1
    return-void
.end method
