.class public final enum Lcom/instagram/android/l/a/g;
.super Ljava/lang/Enum;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/l/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/android/l/a/g;

.field public static final enum b:Lcom/instagram/android/l/a/g;

.field public static final enum c:Lcom/instagram/android/l/a/g;

.field public static final enum d:Lcom/instagram/android/l/a/g;

.field public static final enum e:Lcom/instagram/android/l/a/g;

.field public static final enum f:Lcom/instagram/android/l/a/g;

.field public static final enum g:Lcom/instagram/android/l/a/g;

.field public static final enum h:Lcom/instagram/android/l/a/g;

.field public static final enum i:Lcom/instagram/android/l/a/g;

.field public static final enum j:Lcom/instagram/android/l/a/g;

.field private static final synthetic k:[Lcom/instagram/android/l/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->a:Lcom/instagram/android/l/a/g;

    .line 61
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->b:Lcom/instagram/android/l/a/g;

    .line 62
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->c:Lcom/instagram/android/l/a/g;

    .line 63
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->d:Lcom/instagram/android/l/a/g;

    .line 64
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v7}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->e:Lcom/instagram/android/l/a/g;

    .line 65
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    .line 66
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->g:Lcom/instagram/android/l/a/g;

    .line 67
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "PLAYBACK_COMPLETED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->h:Lcom/instagram/android/l/a/g;

    .line 68
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->i:Lcom/instagram/android/l/a/g;

    .line 69
    new-instance v0, Lcom/instagram/android/l/a/g;

    const-string v1, "END"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/l/a/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/l/a/g;->j:Lcom/instagram/android/l/a/g;

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/instagram/android/l/a/g;

    sget-object v1, Lcom/instagram/android/l/a/g;->a:Lcom/instagram/android/l/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/l/a/g;->b:Lcom/instagram/android/l/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/l/a/g;->c:Lcom/instagram/android/l/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/l/a/g;->d:Lcom/instagram/android/l/a/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/instagram/android/l/a/g;->e:Lcom/instagram/android/l/a/g;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/instagram/android/l/a/g;->f:Lcom/instagram/android/l/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/instagram/android/l/a/g;->g:Lcom/instagram/android/l/a/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/instagram/android/l/a/g;->h:Lcom/instagram/android/l/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/instagram/android/l/a/g;->i:Lcom/instagram/android/l/a/g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/instagram/android/l/a/g;->j:Lcom/instagram/android/l/a/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/android/l/a/g;->k:[Lcom/instagram/android/l/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/l/a/g;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/instagram/android/l/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/l/a/g;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/l/a/g;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/instagram/android/l/a/g;->k:[Lcom/instagram/android/l/a/g;

    invoke-virtual {v0}, [Lcom/instagram/android/l/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/l/a/g;

    return-object v0
.end method
