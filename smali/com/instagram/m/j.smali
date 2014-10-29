.class public final Lcom/instagram/m/j;
.super Ljava/lang/Object;
.source "QuickExperimentManagerFactory.java"


# static fields
.field private static a:Lcom/instagram/common/l/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/l/a/h",
            "<",
            "Lcom/instagram/m/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()Lcom/instagram/m/i;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/instagram/m/j;->a:Lcom/instagram/common/l/a/h;

    invoke-interface {v0}, Lcom/instagram/common/l/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/m/i;

    return-object v0
.end method

.method public static a(Lcom/instagram/common/l/a/h;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/h",
            "<",
            "Lcom/instagram/m/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    sput-object p0, Lcom/instagram/m/j;->a:Lcom/instagram/common/l/a/h;

    .line 20
    return-void
.end method
