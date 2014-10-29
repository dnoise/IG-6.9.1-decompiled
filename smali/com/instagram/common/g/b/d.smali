.class final Lcom/instagram/common/g/b/d;
.super Ljava/lang/Object;
.source "CompressedBackedBitmap.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/common/g/b/d;->a:Landroid/graphics/Bitmap;

    .line 15
    iput p2, p0, Lcom/instagram/common/g/b/d;->b:I

    .line 16
    return-void
.end method


# virtual methods
.method final a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/instagram/common/g/b/d;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/instagram/common/g/b/d;->b:I

    return v0
.end method
