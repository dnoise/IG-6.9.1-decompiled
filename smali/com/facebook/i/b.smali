.class public final Lcom/facebook/i/b;
.super Ljava/lang/Exception;
.source "NumberParseException.java"


# instance fields
.field private a:Lcom/facebook/i/c;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/i/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p2, p0, Lcom/facebook/i/b;->b:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/facebook/i/b;->a:Lcom/facebook/i/c;

    .line 50
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/i/c;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/i/b;->a:Lcom/facebook/i/c;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/i/b;->a:Lcom/facebook/i/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/i/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
