.class public final Lcom/instagram/m/a;
.super Lcom/instagram/m/b;
.source "BooleanExperimentParameter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    const-string v0, "is_enabled"

    const-string v1, "disabled"

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 19
    const-string v0, "enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/instagram/m/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/m/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/instagram/m/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/m/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
