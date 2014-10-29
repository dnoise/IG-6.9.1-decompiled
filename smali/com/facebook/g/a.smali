.class public final Lcom/facebook/g/a;
.super Lcom/facebook/bl;
.source "CacheableRequestBatch.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/bl;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/g/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/facebook/g/a;->b:Z

    return v0
.end method
