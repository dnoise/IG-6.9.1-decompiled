.class public abstract Lcom/instagram/creation/base/ui/h;
.super Ljava/lang/Object;
.source "FilterTileInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/instagram/creation/base/ui/h;->a:I

    .line 16
    iput-object p2, p0, Lcom/instagram/creation/base/ui/h;->b:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/instagram/creation/base/ui/h;->c:I

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/creation/base/ui/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/instagram/creation/base/ui/h;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/instagram/creation/base/ui/h;->c:I

    return v0
.end method
