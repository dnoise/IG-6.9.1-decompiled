.class public final enum Lcom/instagram/creation/photo/gallery/k;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/creation/photo/gallery/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/creation/photo/gallery/k;

.field public static final enum b:Lcom/instagram/creation/photo/gallery/k;

.field public static final enum c:Lcom/instagram/creation/photo/gallery/k;

.field public static final enum d:Lcom/instagram/creation/photo/gallery/k;

.field private static final synthetic e:[Lcom/instagram/creation/photo/gallery/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/instagram/creation/photo/gallery/k;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/instagram/creation/photo/gallery/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/photo/gallery/k;->a:Lcom/instagram/creation/photo/gallery/k;

    new-instance v0, Lcom/instagram/creation/photo/gallery/k;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/instagram/creation/photo/gallery/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/photo/gallery/k;->b:Lcom/instagram/creation/photo/gallery/k;

    new-instance v0, Lcom/instagram/creation/photo/gallery/k;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/instagram/creation/photo/gallery/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/photo/gallery/k;->c:Lcom/instagram/creation/photo/gallery/k;

    new-instance v0, Lcom/instagram/creation/photo/gallery/k;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/instagram/creation/photo/gallery/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/creation/photo/gallery/k;->d:Lcom/instagram/creation/photo/gallery/k;

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/creation/photo/gallery/k;

    sget-object v1, Lcom/instagram/creation/photo/gallery/k;->a:Lcom/instagram/creation/photo/gallery/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/creation/photo/gallery/k;->b:Lcom/instagram/creation/photo/gallery/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/creation/photo/gallery/k;->c:Lcom/instagram/creation/photo/gallery/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/creation/photo/gallery/k;->d:Lcom/instagram/creation/photo/gallery/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/instagram/creation/photo/gallery/k;->e:[Lcom/instagram/creation/photo/gallery/k;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/creation/photo/gallery/k;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    const-class v0, Lcom/instagram/creation/photo/gallery/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/gallery/k;

    return-object v0
.end method

.method public static values()[Lcom/instagram/creation/photo/gallery/k;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/instagram/creation/photo/gallery/k;->e:[Lcom/instagram/creation/photo/gallery/k;

    invoke-virtual {v0}, [Lcom/instagram/creation/photo/gallery/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/creation/photo/gallery/k;

    return-object v0
.end method
