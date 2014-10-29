.class final Lcom/instagram/android/feed/a/a/u;
.super Ljava/lang/Object;
.source "LegacyVideoPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/u;->a:Lcom/instagram/android/feed/a/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->a:Lcom/instagram/android/feed/a/a/t;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/t;->a(Lcom/instagram/android/feed/a/a/t;)Lcom/instagram/android/feed/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/u;->a:Lcom/instagram/android/feed/a/a/t;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/t;->b(Lcom/instagram/android/feed/a/a/t;)V

    .line 102
    :cond_0
    return-void
.end method
