.class public final Lcom/facebook/d/b/h;
.super Ljava/lang/Exception;
.source "SoftErrorException.java"

# interfaces
.implements Lcom/facebook/a/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "soft error"

    return-object v0
.end method
