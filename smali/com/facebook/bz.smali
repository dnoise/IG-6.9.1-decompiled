.class public final Lcom/facebook/bz;
.super Ljava/lang/Object;
.source "Session.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/cm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    iput-object p1, p0, Lcom/facebook/bz;->a:Landroid/content/Context;

    .line 1424
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/bo;
    .locals 4

    .prologue
    .line 1454
    new-instance v0, Lcom/facebook/bo;

    iget-object v1, p0, Lcom/facebook/bz;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/bz;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/bz;->c:Lcom/facebook/cm;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/bo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/cm;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/bz;
    .locals 0
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/facebook/bz;->b:Ljava/lang/String;

    .line 1434
    return-object p0
.end method
