.class public final enum Lcom/instagram/cliffjumper/util/a/d;
.super Ljava/lang/Enum;
.source "PhotoEditFeatureTierUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/cliffjumper/util/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/cliffjumper/util/a/d;

.field public static final enum b:Lcom/instagram/cliffjumper/util/a/d;

.field public static final enum c:Lcom/instagram/cliffjumper/util/a/d;

.field private static final synthetic f:[Lcom/instagram/cliffjumper/util/a/d;


# instance fields
.field public final d:Z

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/instagram/cliffjumper/util/a/d;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/instagram/cliffjumper/util/a/d;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->a:Lcom/instagram/cliffjumper/util/a/d;

    .line 11
    new-instance v0, Lcom/instagram/cliffjumper/util/a/d;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/instagram/cliffjumper/util/a/d;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->b:Lcom/instagram/cliffjumper/util/a/d;

    .line 12
    new-instance v0, Lcom/instagram/cliffjumper/util/a/d;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/instagram/cliffjumper/util/a/d;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->c:Lcom/instagram/cliffjumper/util/a/d;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/cliffjumper/util/a/d;

    sget-object v1, Lcom/instagram/cliffjumper/util/a/d;->a:Lcom/instagram/cliffjumper/util/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/cliffjumper/util/a/d;->b:Lcom/instagram/cliffjumper/util/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/cliffjumper/util/a/d;->c:Lcom/instagram/cliffjumper/util/a/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->f:[Lcom/instagram/cliffjumper/util/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-boolean p3, p0, Lcom/instagram/cliffjumper/util/a/d;->d:Z

    .line 19
    iput-boolean p4, p0, Lcom/instagram/cliffjumper/util/a/d;->e:Z

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/cliffjumper/util/a/d;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/instagram/cliffjumper/util/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/util/a/d;

    return-object v0
.end method

.method public static values()[Lcom/instagram/cliffjumper/util/a/d;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->f:[Lcom/instagram/cliffjumper/util/a/d;

    invoke-virtual {v0}, [Lcom/instagram/cliffjumper/util/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/cliffjumper/util/a/d;

    return-object v0
.end method
