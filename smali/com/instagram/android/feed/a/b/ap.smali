.class final Lcom/instagram/android/feed/a/b/ap;
.super Ljava/lang/Object;
.source "UserHeaderRowViewBinder.java"

# interfaces
.implements Lcom/instagram/android/i/a/d;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/as;

.field final synthetic b:Lcom/instagram/android/i/d;

.field final synthetic c:Lcom/instagram/user/c/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/as;Lcom/instagram/android/i/d;Lcom/instagram/user/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/ap;->a:Lcom/instagram/android/feed/a/b/as;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/ap;->b:Lcom/instagram/android/i/d;

    iput-object p3, p0, Lcom/instagram/android/feed/a/b/ap;->c:Lcom/instagram/user/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ap;->a:Lcom/instagram/android/feed/a/b/as;

    iget-object v0, v0, Lcom/instagram/android/feed/a/b/as;->v:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/ap;->b:Lcom/instagram/android/i/d;

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/ap;->c:Lcom/instagram/user/c/a;

    invoke-interface {v0}, Lcom/instagram/android/i/d;->a()V

    .line 158
    return-void
.end method
