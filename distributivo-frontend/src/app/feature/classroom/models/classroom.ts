interface ClassRoom {
    id:       string;
    code : string;
    name:     string;
    type:     string
    capacity: number;
    location: number | null;
    locationName: string | null;
    typeName : string | null;
    description : string | null;
}

export { ClassRoom };