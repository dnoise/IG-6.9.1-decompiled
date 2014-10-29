.class final Lcom/instagram/android/feed/a/a/k;
.super Lcom/instagram/ui/widget/base/a;
.source "FeedPeopleTagModule.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/instagram/android/feed/a/a/i;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/i;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/k;->b:Lcom/instagram/android/feed/a/a/i;

    iput-object p2, p0, Lcom/instagram/android/feed/a/a/k;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/k;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method
