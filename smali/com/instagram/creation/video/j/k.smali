.class public final Lcom/instagram/creation/video/j/k;
.super Ljava/lang/Object;
.source "SwitchableRenderer.java"

# interfaces
.implements Lcom/instagram/creation/video/gl/p;


# instance fields
.field private a:[Lcom/instagram/creation/video/gl/p;

.field private b:I


# direct methods
.method public constructor <init>([Lcom/instagram/creation/video/gl/p;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/instagram/creation/video/gl/p;->a()V

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/instagram/creation/video/gl/p;->a(I)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/g;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    iget v1, p0, Lcom/instagram/creation/video/j/k;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/instagram/creation/video/gl/p;->a(Lcom/instagram/creation/video/gl/g;)V

    .line 34
    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/p;)Z
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    iget v1, p0, Lcom/instagram/creation/video/j/k;->b:I

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2
    .parameter

    .prologue
    .line 26
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/instagram/creation/video/j/k;->a:[Lcom/instagram/creation/video/gl/p;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/instagram/creation/video/gl/p;->b(I)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/instagram/creation/video/j/k;->b:I

    .line 45
    return-void
.end method
