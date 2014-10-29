.class public final enum Lcom/instagram/creation/video/g/a/b;
.super Ljava/lang/Enum;
.source "VideoCodecOpenGlColorFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/creation/video/g/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/creation/video/g/a/b;

.field public static final enum b:Lcom/instagram/creation/video/g/a/b;

.field private static final synthetic e:[Lcom/instagram/creation/video/g/a/b;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/instagram/creation/video/g/a/b;

    const-string v1, "RGBA"

    const-string v2, "rgba"

    const/16 v3, 0x1908

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/instagram/creation/video/g/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/video/g/a/b;->a:Lcom/instagram/creation/video/g/a/b;

    .line 21
    new-instance v0, Lcom/instagram/creation/video/g/a/b;

    const-string v1, "BGRA"

    const-string v2, "bgra"

    const v3, 0x80e1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/creation/video/g/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/video/g/a/b;->b:Lcom/instagram/creation/video/g/a/b;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/creation/video/g/a/b;

    sget-object v1, Lcom/instagram/creation/video/g/a/b;->a:Lcom/instagram/creation/video/g/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/creation/video/g/a/b;->b:Lcom/instagram/creation/video/g/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/creation/video/g/a/b;->e:[Lcom/instagram/creation/video/g/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/instagram/creation/video/g/a/b;->c:Ljava/lang/String;

    .line 32
    iput p4, p0, Lcom/instagram/creation/video/g/a/b;->d:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/creation/video/g/a/b;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/instagram/creation/video/g/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/g/a/b;

    return-object v0
.end method

.method public static values()[Lcom/instagram/creation/video/g/a/b;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/instagram/creation/video/g/a/b;->e:[Lcom/instagram/creation/video/g/a/b;

    invoke-virtual {v0}, [Lcom/instagram/creation/video/g/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/creation/video/g/a/b;

    return-object v0
.end method
