.class final Lcom/instagram/android/feed/a/b/aa;
.super Ljava/lang/Object;
.source "MediaViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/b/x;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/b/x;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/instagram/android/feed/a/b/aa;->a:Lcom/instagram/android/feed/a/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/feed/a/b/aa;->a:Lcom/instagram/android/feed/a/b/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/b/x;->b(Lcom/instagram/android/feed/a/b/x;)Lcom/instagram/android/feed/a/b/ab;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/feed/a/b/ab;->i_()V

    .line 140
    return-void
.end method
