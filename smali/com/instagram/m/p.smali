.class public final Lcom/instagram/m/p;
.super Ljava/lang/Object;
.source "QuickExperimentOverrideManager.java"


# static fields
.field private static final a:Lcom/instagram/m/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    new-instance v0, Lcom/instagram/m/f;

    const-string v1, "qe_override_cache"

    invoke-direct {v0, v1}, Lcom/instagram/m/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/m/p;->a:Lcom/instagram/m/f;

    return-void
.end method

.method public static a()Lcom/instagram/m/f;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/instagram/m/p;->a:Lcom/instagram/m/f;

    return-object v0
.end method
