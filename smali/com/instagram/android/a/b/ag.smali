.class public final Lcom/instagram/android/a/b/ag;
.super Ljava/lang/Object;
.source "RecommendedUserRowViewBinder.java"


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Lcom/instagram/user/follow/FollowButton;

.field h:Landroid/view/ViewGroup;

.field i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

.field j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    iput-object v0, p0, Lcom/instagram/android/a/b/ag;->i:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    return-void
.end method
