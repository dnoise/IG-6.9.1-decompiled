.class final Lcom/instagram/android/feed/a/b/d;
.super Ljava/lang/Object;
.source "FeedMediaRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/instagram/android/feed/a/b/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/a;Lcom/instagram/feed/d/l;Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/d;->d:Lcom/instagram/android/feed/a/b/a;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/d;->a:Lcom/instagram/feed/d/l;

    iput-object p3, p0, Lcom/instagram/android/feed/a/b/d;->b:Landroid/view/View;

    iput p4, p0, Lcom/instagram/android/feed/a/b/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/d;->d:Lcom/instagram/android/feed/a/b/a;

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/a;->f(Lcom/instagram/android/feed/a/b/a;)Lcom/instagram/android/feed/a/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/d;->a:Lcom/instagram/feed/d/l;

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/d;->b:Landroid/view/View;

    iget v3, p0, Lcom/instagram/android/feed/a/b/d;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/android/feed/a/b/f;->a(Lcom/instagram/feed/d/l;Landroid/view/View;I)V

    .line 192
    return-void
.end method
