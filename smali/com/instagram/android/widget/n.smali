.class final Lcom/instagram/android/widget/n;
.super Lcom/instagram/ui/widget/base/a;
.source "MediaActionsView.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/instagram/android/widget/MediaActionsView;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaActionsView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/instagram/android/widget/n;->b:Lcom/instagram/android/widget/MediaActionsView;

    iput-object p2, p0, Lcom/instagram/android/widget/n;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/instagram/android/widget/n;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 207
    return-void
.end method
