.class public final Lcom/instagram/creation/photo/c/b;
.super Ljava/lang/Object;
.source "ExifImageData.java"


# instance fields
.field private a:Ljava/lang/Double;

.field private b:Ljava/lang/Double;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/instagram/creation/photo/c/b;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/instagram/creation/photo/c/b;->c:I

    .line 44
    return-void
.end method

.method public final a(Ljava/lang/Double;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/instagram/creation/photo/c/b;->a:Ljava/lang/Double;

    .line 36
    return-void
.end method

.method public final b()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/instagram/creation/photo/c/b;->a:Ljava/lang/Double;

    return-object v0
.end method

.method public final b(Ljava/lang/Double;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/instagram/creation/photo/c/b;->b:Ljava/lang/Double;

    .line 40
    return-void
.end method

.method public final c()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/creation/photo/c/b;->b:Ljava/lang/Double;

    return-object v0
.end method
