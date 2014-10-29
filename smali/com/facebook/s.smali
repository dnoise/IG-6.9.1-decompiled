.class final Lcom/facebook/s;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:I

.field final b:Lcom/facebook/a;

.field final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILcom/facebook/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    iput-object p2, p0, Lcom/facebook/s;->b:Lcom/facebook/a;

    .line 819
    iput-object p3, p0, Lcom/facebook/s;->c:Ljava/lang/String;

    .line 820
    iput p1, p0, Lcom/facebook/s;->a:I

    .line 821
    return-void
.end method

.method static a(Lcom/facebook/a;)Lcom/facebook/s;
    .locals 3
    .parameter

    .prologue
    .line 824
    new-instance v0, Lcom/facebook/s;

    sget v1, Lcom/facebook/t;->a:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/facebook/s;-><init>(ILcom/facebook/a;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/facebook/s;
    .locals 3
    .parameter

    .prologue
    .line 828
    new-instance v0, Lcom/facebook/s;

    sget v1, Lcom/facebook/t;->b:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/s;-><init>(ILcom/facebook/a;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/s;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 832
    if-eqz p1, :cond_0

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 836
    :cond_0
    new-instance v0, Lcom/facebook/s;

    sget v1, Lcom/facebook/t;->c:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/facebook/s;-><init>(ILcom/facebook/a;Ljava/lang/String;)V

    return-object v0
.end method
