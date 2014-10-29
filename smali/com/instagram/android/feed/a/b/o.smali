.class final Lcom/instagram/android/feed/a/b/o;
.super Ljava/lang/Object;
.source "MediaHeaderViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/l;

.field final synthetic b:Lcom/instagram/android/feed/a/b/m;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/m;Lcom/instagram/feed/d/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/o;->b:Lcom/instagram/android/feed/a/b/m;

    iput-object p2, p0, Lcom/instagram/android/feed/a/b/o;->a:Lcom/instagram/feed/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 107
    invoke-static {}, Lcom/instagram/o/f/b;->a()Lcom/instagram/o/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/a/b/o;->b:Lcom/instagram/android/feed/a/b/m;

    invoke-static {v1}, Lcom/instagram/android/feed/a/b/m;->c(Lcom/instagram/android/feed/a/b/m;)Landroid/support/v4/app/s;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/a/b/o;->a:Lcom/instagram/feed/d/l;

    iget-object v3, p0, Lcom/instagram/android/feed/a/b/o;->b:Lcom/instagram/android/feed/a/b/m;

    invoke-static {v3}, Lcom/instagram/android/feed/a/b/m;->b(Lcom/instagram/android/feed/a/b/m;)Lcom/instagram/feed/g/a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/instagram/o/f/a;->a(Landroid/support/v4/app/s;Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V

    .line 109
    return-void
.end method
