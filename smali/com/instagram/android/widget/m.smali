.class final Lcom/instagram/android/widget/m;
.super Lcom/instagram/ui/widget/base/a;
.source "MediaActionsView.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/widget/MediaActionsView;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaActionsView;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/instagram/android/widget/m;->a:Lcom/instagram/android/widget/MediaActionsView;

    invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/widget/m;->a:Lcom/instagram/android/widget/MediaActionsView;

    invoke-static {v0}, Lcom/instagram/android/widget/MediaActionsView;->a(Lcom/instagram/android/widget/MediaActionsView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method
