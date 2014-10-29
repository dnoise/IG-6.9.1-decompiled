.class final Lcom/instagram/notifications/c2dm/b;
.super Lcom/instagram/api/k/a/c;
.source "IgPushRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/c",
        "<",
        "Lcom/instagram/api/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/instagram/common/u/b/g;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/instagram/notifications/c2dm/b;->a:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lcom/instagram/common/u/b/g;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/notifications/c2dm/b;->b:Ljava/lang/String;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/instagram/common/u/b/g;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/instagram/notifications/c2dm/b;-><init>(Ljava/lang/String;Lcom/instagram/common/u/b/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;
    .locals 1
    .parameter

    .prologue
    .line 79
    invoke-static {p1}, Lcom/instagram/api/k/a/f;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/api/k/a/d;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    const-string v0, "device_token"

    iget-object v1, p0, Lcom/instagram/notifications/c2dm/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "device_type"

    iget-object v1, p0, Lcom/instagram/notifications/c2dm/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final d_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "push/register/"

    return-object v0
.end method
