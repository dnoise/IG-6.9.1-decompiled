.class public Lcom/instagram/common/a/a/b;
.super Ljava/lang/Object;
.source "BaseResponse.java"

# interfaces
.implements Lcom/instagram/common/a/a/m;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/common/a/a/b;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/instagram/common/a/a/b;->a:I

    .line 32
    return-void
.end method

.method public f_()Z
    .locals 2

    .prologue
    .line 18
    iget v0, p0, Lcom/instagram/common/a/a/b;->a:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/instagram/common/a/a/b;->a:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/instagram/common/a/a/b;->a:I

    return v0
.end method
