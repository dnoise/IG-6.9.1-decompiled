.class final Lcom/instagram/android/a/b/i;
.super Ljava/lang/Object;
.source "FollowDestinationBannerRowViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/e/b;


# direct methods
.method constructor <init>(Lcom/instagram/feed/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/instagram/android/a/b/i;->a:Lcom/instagram/feed/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/instagram/android/a/b/i;->a:Lcom/instagram/feed/e/b;

    sget-object v1, Lcom/instagram/feed/f/d;->b:Lcom/instagram/feed/f/d;

    invoke-interface {v0, v1}, Lcom/instagram/feed/e/b;->a(Lcom/instagram/feed/f/d;)V

    .line 29
    return-void
.end method
