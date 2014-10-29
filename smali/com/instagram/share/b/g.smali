.class public final Lcom/instagram/share/b/g;
.super Ljava/lang/Object;
.source "FacebookConstants.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v2

    const-string v1, "publish_actions"

    aput-object v1, v0, v3

    sput-object v0, Lcom/instagram/share/b/g;->a:[Ljava/lang/String;

    .line 28
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "email"

    aput-object v1, v0, v2

    sput-object v0, Lcom/instagram/share/b/g;->b:[Ljava/lang/String;

    .line 32
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/instagram/share/b/g;->c:[Ljava/lang/String;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v2

    const-string v1, "manage_pages"

    aput-object v1, v0, v3

    const-string v1, "publish_actions"

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/share/b/g;->d:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    const-string v0, "124024574287414"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "84a456d620314b6e92a16d8ff1c792dc"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "493186350727442"

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "624618737631578"

    return-object v0
.end method
