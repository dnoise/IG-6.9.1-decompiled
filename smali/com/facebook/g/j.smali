.class public final Lcom/facebook/g/j;
.super Ljava/lang/Object;
.source "FileLruCache.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/g/j;->b:I

    .line 540
    const/high16 v0, 0x10

    iput v0, p0, Lcom/facebook/g/j;->a:I

    .line 541
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/facebook/g/j;->a:I

    return v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/facebook/g/j;->b:I

    return v0
.end method
