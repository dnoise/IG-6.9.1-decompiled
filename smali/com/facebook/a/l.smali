.class public final enum Lcom/facebook/a/l;
.super Ljava/lang/Enum;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/l;

.field public static final enum b:Lcom/facebook/a/l;

.field public static final enum c:Lcom/facebook/a/l;

.field private static final synthetic h:[Lcom/facebook/a/l;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Lcom/facebook/a/r;

.field private final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 178
    new-instance v0, Lcom/facebook/a/l;

    const-string v1, "ACRA_CRASH_REPORT"

    const-string v3, "acra-reports"

    const-wide/32 v4, 0xc800

    const/4 v6, 0x0

    new-array v7, v12, [Ljava/lang/String;

    const-string v8, ".stacktrace"

    aput-object v8, v7, v2

    const-string v8, ".temp_stacktrace"

    aput-object v8, v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/facebook/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/a/r;[Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    .line 185
    new-instance v3, Lcom/facebook/a/l;

    const-string v4, "NATIVE_CRASH_REPORT"

    const-string v6, "minidumps"

    const-wide/32 v7, 0x7d000

    sget-object v9, Lcom/facebook/a/r;->U:Lcom/facebook/a/r;

    new-array v10, v11, [Ljava/lang/String;

    const-string v0, ".dmp"

    aput-object v0, v10, v2

    move v5, v11

    invoke-direct/range {v3 .. v10}, Lcom/facebook/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/a/r;[Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/a/l;->b:Lcom/facebook/a/l;

    .line 191
    new-instance v3, Lcom/facebook/a/l;

    const-string v4, "ANR_REPORT"

    const-string v6, "traces"

    const-wide/32 v7, 0x1e000

    sget-object v9, Lcom/facebook/a/r;->ac:Lcom/facebook/a/r;

    new-array v10, v12, [Ljava/lang/String;

    const-string v0, ".stacktrace"

    aput-object v0, v10, v2

    const-string v0, ".temp_stacktrace"

    aput-object v0, v10, v11

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lcom/facebook/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/a/r;[Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    .line 176
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/a/l;

    sget-object v1, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/a/l;->b:Lcom/facebook/a/l;

    aput-object v1, v0, v11

    sget-object v1, Lcom/facebook/a/l;->c:Lcom/facebook/a/l;

    aput-object v1, v0, v12

    sput-object v0, Lcom/facebook/a/l;->h:[Lcom/facebook/a/l;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;JLcom/facebook/a/r;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/facebook/a/r;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput-object p3, p0, Lcom/facebook/a/l;->d:Ljava/lang/String;

    .line 203
    iput-wide p4, p0, Lcom/facebook/a/l;->e:J

    .line 204
    iput-object p6, p0, Lcom/facebook/a/l;->f:Lcom/facebook/a/r;

    .line 205
    iput-object p7, p0, Lcom/facebook/a/l;->g:[Ljava/lang/String;

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/facebook/a/l;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/a/l;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/a/l;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/a/l;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/a/l;)Lcom/facebook/a/r;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/a/l;->f:Lcom/facebook/a/r;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/a/l;)J
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/facebook/a/l;->e:J

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/l;
    .locals 1
    .parameter "name"

    .prologue
    .line 176
    const-class v0, Lcom/facebook/a/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/l;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/l;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/facebook/a/l;->h:[Lcom/facebook/a/l;

    invoke-virtual {v0}, [Lcom/facebook/a/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/l;

    return-object v0
.end method
