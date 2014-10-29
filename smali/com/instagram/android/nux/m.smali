.class final Lcom/instagram/android/nux/m;
.super Ljava/lang/Object;
.source "LandingBackgroundView.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/instagram/android/nux/m;->a:I

    .line 30
    iput p2, p0, Lcom/instagram/android/nux/m;->b:I

    .line 31
    iput p3, p0, Lcom/instagram/android/nux/m;->c:I

    .line 32
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    .line 45
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/res/Resources;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 36
    iget v0, p0, Lcom/instagram/android/nux/m;->a:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/nux/m;->d:Landroid/graphics/Bitmap;

    .line 38
    :cond_0
    return-void
.end method
