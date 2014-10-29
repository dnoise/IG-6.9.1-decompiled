.class public final Lcom/instagram/android/feed/a/b/w;
.super Ljava/lang/Object;
.source "MediaSetRowViewBinder.java"


# instance fields
.field a:I

.field b:Landroid/view/View;

.field c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

.field d:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

.field e:[Landroid/widget/CheckBox;

.field f:[Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-array v0, p1, [Lcom/instagram/common/ui/widget/imageview/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/w;->c:[Lcom/instagram/common/ui/widget/imageview/IgImageView;

    .line 178
    new-array v0, p1, [Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/w;->d:[Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    .line 179
    new-array v0, p1, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/w;->e:[Landroid/widget/CheckBox;

    .line 180
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/instagram/android/feed/a/b/w;->f:[Landroid/view/View;

    .line 181
    iput p1, p0, Lcom/instagram/android/feed/a/b/w;->a:I

    .line 182
    return-void
.end method
